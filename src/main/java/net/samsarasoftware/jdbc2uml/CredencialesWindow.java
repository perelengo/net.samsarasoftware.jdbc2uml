package net.samsarasoftware.jdbc2uml;

/*-
 * #%L
 * jdbc2uml
 * %%
 * Copyright (C) 2014 - 2017 Pere Joseph Rodriguez
 * %%
 * Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
 * #L%
 */

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;

import java.awt.BorderLayout;

import javax.swing.JLabel;
import javax.swing.ImageIcon;

import java.awt.FlowLayout;

import javax.swing.JTextField;

import java.awt.CardLayout;

import javax.swing.BoxLayout;
import javax.swing.JButton;

import java.awt.Component;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;

import javax.swing.JPasswordField;

public class CredencialesWindow implements ActionListener , WindowListener{

	private String lock=null;
	private JFrame frame;
	private JTextField userTextField;
	private LoginCallback callback;
	private JPasswordField passwordTextField_1;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					CredencialesWindow window = new CredencialesWindow();
					window.login(new LoginCallback() {
						
						
						public void setUser(String user) {
							System.out.println("user:"+user);
							
						}

						
						public void setPassword(String password) {
							System.out.println("password:"+password);
							
						}
					});
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public CredencialesWindow() {

	}

	
	
	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setBounds(100, 100, 450, 300);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		JPanel panel = new JPanel();
		frame.getContentPane().add(panel, BorderLayout.NORTH);
		
		JLabel lblSds = new JLabel("  ");
		//lblSds.setIcon(new ImageIcon(CredencialesWindow.class.getResource("/es/caib/pdpccr/synchronizer/Govern.gif")));
		panel.add(lblSds);
		
		JPanel panel_1 = new JPanel();
		frame.getContentPane().add(panel_1, BorderLayout.CENTER);
		panel_1.setLayout(new BoxLayout(panel_1, BoxLayout.Y_AXIS));
		
		JPanel panel_2 = new JPanel();
		panel_1.add(panel_2);
		panel_2.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
		
		JPanel panel_5 = new JPanel();
		panel_2.add(panel_5);
		
		JLabel lblNewLabel = new JLabel("C?digo de usuario");
		panel_5.add(lblNewLabel);
		
		JPanel panel_6 = new JPanel();
		panel_2.add(panel_6);
		
		userTextField = new JTextField();
		panel_6.add(userTextField);
		userTextField.setColumns(10);
		
		JPanel panel_3 = new JPanel();
		panel_1.add(panel_3);
		panel_3.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
		
		JPanel panel_7 = new JPanel();
		panel_3.add(panel_7);
		
		JLabel lblNewLabel_1 = new JLabel("Contrase?a");
		panel_7.add(lblNewLabel_1);
		
		JPanel panel_8 = new JPanel();
		panel_3.add(panel_8);
		
		passwordTextField_1 = new JPasswordField();
		passwordTextField_1.setColumns(10);
		panel_8.add(passwordTextField_1);
		
		JPanel panel_4 = new JPanel();
		panel_1.add(panel_4);
		
		JButton btnNewButton = new JButton("Iniciar proceso");
		btnNewButton.addActionListener(this);
		panel_4.add(btnNewButton);
	}

	public synchronized String getLock(){
		return this.lock;
	}

	public synchronized void enableLock(){
		this.lock="CredencialesWindowLock";
	}

	public synchronized void disableLock(){
		this.lock=null;
	}

	public synchronized boolean isLocked(){
		return this.lock!=null;
	}

	
	public void actionPerformed(ActionEvent e) {
		callback.setUser(userTextField.getText());
		callback.setPassword(passwordTextField_1.getText());
		frame.setVisible(false);
		disableLock();
		frame.dispose();
	}
	
	public static void login(LoginCallback callback) {

		
		Launcher launcher=new Launcher();
			
		CredencialesWindow window=launcher.getWindow();
		window.callback=callback;

		String timer="myTimer1";
		while(window.isLocked()){
			synchronized (timer) {
				try {
					timer.wait(1000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		}

		


		
	}
	
	private static class Launcher implements Runnable{
		CredencialesWindow window;
		
		public Launcher(){
			EventQueue.invokeLater(this);
			String timer="myTimer1";
			while(window==null){
				synchronized (timer) {
					try {
						timer.wait(1000);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			}

		}
		
		public CredencialesWindow getWindow() {
			return window;
		}


		public void run() {
			try {
				window = new CredencialesWindow();
				window.enableLock();
				window.initialize();
				window.frame.setVisible(true);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	
	}


	public void windowOpened(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}


	public void windowClosing(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}


	public void windowClosed(WindowEvent e) {
		actionPerformed(null);
	}


	public void windowIconified(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}

	
	public void windowDeiconified(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}

	
	public void windowActivated(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}

	
	public void windowDeactivated(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}



}
